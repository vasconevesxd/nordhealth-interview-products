<script setup lang="ts">
import { ref } from 'vue'
import { login } from '@/services/supabase/supaAuth'
import { watchDebounced } from '@vueuse/core'
import { RouterLink, useRouter } from 'vue-router'

const formData = ref({
  email: '',
  password: '',
})

const { handleServerError, realtimeErrors, handleLoginForm } = useFormErrors()

const router = useRouter()

const showPassword = ref(false)
const togglePasswordVisibility = () => {
  showPassword.value = !showPassword.value
}

watchDebounced(
  formData,
  () => {
    handleLoginForm(formData.value)
  },
  {
    debounce: 1000,
    deep: true,
  },
)

// Login function
const signin = async () => {
  const { error } = await login(formData.value)
  if (!error) return router.push('/')

  handleServerError(error)
}
</script>

<template>
  <div class="login-container">
    <provet-card class="login-card">
      <header>
        <h2 class="login-title">Login</h2>
      </header>

      <form @submit.prevent="signin" class="login-form">
        <provet-input
          id="email"
          type="email"
          label="Email"
          placeholder="johndoe@example.com"
          :value="formData.email"
          @input="formData.email = $event.target.value"
          required
          expand="true"
          autocomplete="email"
          :error="realtimeErrors?.email.length ? realtimeErrors.email[0] : undefined"
        >
        </provet-input>

        <provet-input
          id="password"
          :type="showPassword ? 'text' : 'password'"
          label="Password"
          placeholder="Enter your password"
          :value="formData.password"
          @input="formData.password = $event.target.value"
          required
          expand="true"
          autocomplete="current-password"
          :error="realtimeErrors?.password.length ? realtimeErrors.password[0] : undefined"
        >
          <provet-button
            type="button"
            :slot="'end'"
            aria-describedby="password-tooltip"
            @click="togglePasswordVisibility"
          >
            <provet-icon name="interface-edit-on" v-if="showPassword"></provet-icon>
            <provet-icon name="interface-edit-off" v-else></provet-icon>
          </provet-button>
        </provet-input>
        <provet-tooltip id="password-tooltip">Show / hide password</provet-tooltip>

        <provet-button type="submit" expand="true" class="primary-button">Login</provet-button>
      </form>

      <footer>
        <p class="register-link">
          Don't have an account?
          <RouterLink to="/register" class="underline-link">Register</RouterLink>
        </p>
      </footer>
    </provet-card>
  </div>
</template>

<style scoped>
.login-container {
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 90vh;
  padding: 20px;
}

.login-card {
  max-width: 400px;
  width: 100%;
}

.login-title {
  font-size: 1.5rem;
  font-weight: bold;
}

.login-description {
  color: var(--text-secondary);
}

.full-width {
  width: 100%;
}

.forgot-password {
  display: block;
  text-align: right;
  font-size: 0.8rem;
  text-decoration: underline;
  color: var(--primary);
  margin-top: 5px;
}

.error-message {
  color: red;
  font-size: 0.9rem;
}

.primary-button {
  background-color: var(--primary);
  color: white;
  margin-top: 1rem;
}

.register-link {
  text-align: center;
  margin-top: 10px;
}

.underline-link {
  color: var(--primary);
  text-decoration: underline;
}
</style>

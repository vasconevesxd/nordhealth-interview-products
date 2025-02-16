<script setup lang="ts">
import router from '@/router/index'
import { register } from '@/services/supabase/supaAuth'

const formData = ref({
  username: '',
  firstName: '',
  lastName: '',
  email: '',
  password: '',
  confirmPassword: '',
  productUpdates: false,
  announcements: false,
})

const showPassword = ref(false)
const togglePasswordVisibility = () => {
  showPassword.value = !showPassword.value
}

const signup = async () => {
  const isRegistered = await register(formData.value)
  if (isRegistered) router.push('/success')
}
</script>

<template>
  <div class="register-container">
    <provet-card class="register-card">
      <header>
        <h2 class="register-title">Register</h2>
      </header>

      <form @submit.prevent="signup" class="register-form">
        <provet-input
          id="username"
          type="text"
          label="Username"
          placeholder="johndoe19"
          :value="formData.username"
          @input="formData.username = $event.target.value"
          required
          expand="true"
        ></provet-input>

        <div class="name-fields">
          <provet-input
            id="first_name"
            type="text"
            label="First Name"
            placeholder="John"
            :value="formData.firstName"
            @input="formData.firstName = $event.target.value"
            required
            expand="true"
          ></provet-input>

          <provet-input
            id="last_name"
            type="text"
            label="Last Name"
            placeholder="Doe"
            :value="formData.lastName"
            @input="formData.lastName = $event.target.value"
            required
            expand="true"
          ></provet-input>
        </div>

        <provet-input
          id="email"
          type="email"
          label="Email"
          placeholder="johndoe19@example.com"
          :value="formData.email"
          @input="formData.email = $event.target.value"
          required
          expand="true"
        ></provet-input>

        <provet-input
          id="password"
          :type="showPassword ? 'text' : 'password'"
          label="Password"
          placeholder="*****"
          autocomplete="new-password"
          :value="formData.password"
          @input="formData.password = $event.target.value"
          required
          expand="true"
        >
          <provet-button type="button" :slot="'end'" @click="togglePasswordVisibility">
            <provet-icon name="interface-edit-on" v-if="showPassword"></provet-icon>
            <provet-icon name="interface-edit-off" v-else></provet-icon>
          </provet-button>
        </provet-input>

        <provet-input
          id="confirm_password"
          type="password"
          label="Confirm Password"
          placeholder="*****"
          autocomplete="new-password"
          :value="formData.confirmPassword"
          @input="formData.confirmPassword = $event.target.value"
          required
          expand="true"
        ></provet-input>

        <provet-fieldset label="Notifications" class="notifications">
          <provet-stack>
            <provet-checkbox label="Product Updates"></provet-checkbox>
            <provet-checkbox label="Announcements"></provet-checkbox>
          </provet-stack>
        </provet-fieldset>

        <provet-button type="submit" expand="true" class="primary-button"> Register </provet-button>
      </form>

      <footer>
        <p class="login-link">
          Already have an account?
          <RouterLink to="/login" class="underline-link">Login</RouterLink>
        </p>
      </footer>
    </provet-card>
  </div>
</template>

<style scoped>
.register-container {
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 90vh;
  padding: 20px;
}

.register-card {
  max-width: 400px;
  width: 100%;
}

.register-title {
  font-size: 1.5rem;
  font-weight: bold;
}

.register-description {
  color: var(--text-secondary);
}

.name-fields {
  display: flex;
  gap: 10px;
}

.notifications {
  margin-top: 1rem;
}

.primary-button {
  background-color: var(--primary);
  color: white;
  margin-top: 1rem;
}

.login-link {
  text-align: center;
  margin-top: 10px;
}

.underline-link {
  color: var(--primary);
  text-decoration: underline;
}
</style>

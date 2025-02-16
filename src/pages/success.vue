<script lang="ts" setup>
import { useRouter } from 'vue-router'

const router = useRouter()

const goToLogin = () => {
  router.push('/login')
}
</script>

<template>
  <div class="success-container">
    <provet-card class="success-card">
      <header>
        <h2 class="success-title">Registration Successful!</h2>
      </header>

      <p class="success-message">
        Thank you for signing up. You can now log in and start using our services.
      </p>

      <provet-button expand="true" @click="goToLogin">Go to Login</provet-button>
    </provet-card>
  </div>
</template>

<style scoped>
.success-container {
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 90vh;
  padding: 20px;
}

.success-card {
  max-width: 400px;
  width: 100%;
  text-align: center;
}

.success-title {
  font-size: 1.5rem;
  font-weight: bold;
}

.success-message {
  margin: 20px 0;
  color: var(--text-secondary);
}
</style>

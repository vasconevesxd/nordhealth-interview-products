<script setup lang="ts"></script>

<template>
  <provet-navigation slot="nav">
    <template v-slot:header>
      <provet-dropdown expand>
        <template v-slot:toggle>
          <provet-button expand>
            <template v-slot:start>
              <provet-avatar name="Bath Clinic" variant="square">B</provet-avatar>
            </template>
            Bath Clinic
          </provet-button>
        </template>
        <provet-dropdown-group heading="laura.williams@nordhealth.com">
          <provet-dropdown-item>
            <template v-slot:start>
              <provet-avatar name="Bath Clinic" size="s" variant="square">B</provet-avatar>
            </template>
            Bath Clinic
            <template v-slot:end>
              <provet-icon name="interface-checked"></provet-icon>
            </template>
          </provet-dropdown-item>
          <provet-dropdown-item>
            <template v-slot:start>
              <provet-avatar
                name="Ocean Beach Clinic"
                size="s"
                variant="square"
                style="--n-avatar-color: var(--n-color-status-success)"
              >
                O
              </provet-avatar>
            </template>
            Ocean Beach Clinic
          </provet-dropdown-item>
          <provet-dropdown-item>
            <template v-slot:start>
              <provet-avatar
                name="Park Animal Hospital"
                size="s"
                variant="square"
                style="--n-avatar-color: var(--n-color-status-highlight)"
              >
                P
              </provet-avatar>
            </template>
            Park Animal Hospital
          </provet-dropdown-item>
          <provet-dropdown-item>
            <template v-slot:start>
              <provet-avatar
                name="Balboa Pet Hospital"
                size="s"
                variant="square"
                style="--n-avatar-color: var(--n-color-status-danger)"
              >
                B
              </provet-avatar>
            </template>
            Balboa Pet Hospital
          </provet-dropdown-item>
        </provet-dropdown-group>
        <provet-dropdown-group>
          <provet-dropdown-item>Add another clinic</provet-dropdown-item>
          <provet-dropdown-item>Customize style</provet-dropdown-item>
        </provet-dropdown-group>
        <provet-dropdown-item>Sign out from all clinics</provet-dropdown-item>
      </provet-dropdown>
    </template>
    <provet-nav-group heading="Workspace">
      <provet-nav-item href="#" active icon="navigation-dashboard">Dashboard</provet-nav-item>
      <provet-nav-item icon="navigation-payments">
        Payments
        <template v-slot:subnav>
          <provet-nav-group>
            <provet-nav-item href="#">All transactions</provet-nav-item>
            <provet-nav-item href="#">Payments</provet-nav-item>
            <provet-nav-item href="#">Disputes</provet-nav-item>
          </provet-nav-group>
        </template>
      </provet-nav-item>
      <provet-nav-item icon="navigation-reports">
        Reports
        <template v-slot:subnav>
          <provet-nav-group>
            <provet-nav-item href="#">Payments</provet-nav-item>
            <provet-nav-item href="#">Disputes</provet-nav-item>
            <provet-nav-item href="#">Payouts</provet-nav-item>
          </provet-nav-group>
        </template>
      </provet-nav-item>
      <provet-nav-item href="#" icon="navigation-settings">Settings</provet-nav-item>
    </provet-nav-group>
    <template v-slot:footer>
      <provet-dropdown expand>
        <template v-slot:toggle>
          <provet-button expand>
            <template v-slot:start>
              <provet-avatar aria-hidden="true" name="Laura Williams"></provet-avatar>
            </template>
            Laura Williams
          </provet-button>
        </template>
        <provet-dropdown-group>
          <provet-dropdown-item href="#">View profile</provet-dropdown-item>
          <provet-dropdown-item>Settings</provet-dropdown-item>
        </provet-dropdown-group>
        <provet-dropdown-group>
          <provet-dropdown-item>
            Show keyboard shortcuts
            <template v-slot:end>
              <div class="n-color-text-weaker n-font-size-xs">Cmd+K</div>
            </template>
          </provet-dropdown-item>
          <provet-dropdown-item>Help & Support</provet-dropdown-item>
          <provet-dropdown-item>API</provet-dropdown-item>
        </provet-dropdown-group>
        <provet-dropdown-item>
          Sign out
          <template v-slot:end>
            <provet-icon name="interface-logout"></provet-icon>
          </template>
        </provet-dropdown-item>
      </provet-dropdown>
    </template>
  </provet-navigation>
</template>

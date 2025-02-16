import { supabase } from '@/services/supabase/supabaseClient'

export const fetchProfile = ({ column, value }: { column: string; value: string }) => {
  return supabase.from('profiles').select().eq(column, value).single()
}

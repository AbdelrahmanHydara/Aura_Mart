import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseHelper {

  static Future<void> initializeSupabase() async {
   Supabase.initialize(
       url: "https://fauajbynrwywdmcnhpeb.supabase.co",
       anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZhdWFqYnlucnd5d2RtY25ocGViIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjI0Mzg5ODQsImV4cCI6MjA3ODAxNDk4NH0.Kc7rh2J5vCS8sOoE9EyUK41xO4rH8xp8KoBWygFeu7k",
   ); // Initialization logic for Supabase
  }
}

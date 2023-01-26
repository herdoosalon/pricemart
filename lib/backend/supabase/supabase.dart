import 'package:supabase_flutter/supabase_flutter.dart';

export 'database/database.dart';

const _kSupabaseUrl = 'https://sbxshuqtnbliedrfxbav.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNieHNodXF0bmJsaWVkcmZ4YmF2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzQ2NTM3NzEsImV4cCI6MTk5MDIyOTc3MX0.tE2Voj_7RwCMCouEE457E_F2rQ9zK6MEpWr4DUjCfz0';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
      );
}

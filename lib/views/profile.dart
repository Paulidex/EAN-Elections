import 'package:flutter/material.dart';

import '../services/user_profile_service.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();

  bool _loading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadProfile();
  }

  Future<void> _loadProfile() async {
    try {
      final data = await getUserProfile();
      if (data != null) {
        _nameController.text = data['name'] ?? '';
        _phoneController.text = data['phone'] ?? '';
      }
      setState(() => _loading = false);
    } catch (e) {
      setState(() {
        _error = 'Error cargando perfil';
        _loading = false;
      });
    }
  }

  Future<void> _saveProfile() async {
    setState(() => _loading = true);
    try {
      await updateUserProfile({
        'name': _nameController.text.trim(),
        'phone': _phoneController.text.trim(),
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Perfil actualizado')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error al actualizar: $e')),
      );
    } finally {
      setState(() => _loading = false);
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }
    if (_error != null) {
      return Scaffold(
        body: Center(child: Text(_error!)),
      );
    }
    return Scaffold(
      appBar: AppBar(title: const Text('Editar perfil')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Nombre'),
            ),
            TextField(
              controller: _phoneController,
              decoration: const InputDecoration(labelText: 'Teléfono'),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveProfile,
              child: const Text('Guardar cambios'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notificações'),
      ),
      body: ListView(
        children: [
          _buildNotificationCard(
            title: 'Parcela vencida',
            description: 'Sua parcela com vencimento em 10/05/2023 está em atraso.',
            date: '08/05/2023',
            isRead: true,
          ),
          _buildNotificationCard(
            title: 'Novo produto disponível',
            description: 'O produto X está disponível para aquisição por lance.',
            date: '07/05/2023',
            isRead: false,
          ),
          _buildNotificationCard(
            title: 'Sorteio mensal',
            description: 'O sorteio mensal foi realizado e você não foi contemplado.',
            date: '05/05/2023',
            isRead: true,
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationCard({
    required String title,
    required String description,
    required String date,
    required bool isRead,
  }) {
    return Card(
      color: isRead ? Colors.white : Colors.grey[200],
      child: ListTile(
        title: Text(title),
        subtitle: Text(description),
        trailing: Text(date),
      ),
    );
  }
}

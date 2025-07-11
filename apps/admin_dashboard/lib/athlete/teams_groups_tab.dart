import 'package:core/core.dart';
import 'package:flutter/material.dart';

class TeamsGroupsTab extends StatelessWidget {
  const TeamsGroupsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _buildTeamSection(),
          const SizedBox(height: 24),
          _buildGroupSection(),
        ],
      ),
    );
  }

  Widget _buildTeamSection() {
    return BlocBuilder<TeamMemberBloc, TeamMemberState>(
      builder: (context, state) {
        if (state is TeamMember_Loading) {
          return const CircularProgressIndicator();
        }
        if (state is LoadedTeamMembers && state.teamMembers.isNotEmpty) {
          return Card(
            elevation: 2,
            child: ExpansionTile(
              title: const Text("Các đội đã tham gia"),
              initiallyExpanded: true,
              children:
                  state.teamMembers.map((member) {
                    final team = state.teams?[member.teamId];
                    return ListTile(
                      leading: const Icon(Icons.shield_outlined),
                      title: Text(team?.name ?? 'Đang tải...'),
                      subtitle: Text(team?.description ?? ''),
                    );
                  }).toList(),
            ),
          );
        }
        return const Card(
          child: ListTile(title: Text("Chưa tham gia đội nào.")),
        );
      },
    );
  }

  Widget _buildGroupSection() {
    return BlocBuilder<GroupMemberBloc, GroupMemberState>(
      builder: (context, state) {
        if (state is GroupMember_Loading) {
          return const CircularProgressIndicator();
        }
        if (state is LoadedGroupMembers && state.groupMembers.isNotEmpty) {
          return Card(
            elevation: 2,
            child: ExpansionTile(
              title: const Text("Các nhóm chat"),
              initiallyExpanded: true,
              children:
                  state.groupMembers.map((member) {
                    final group = state.groups?[member.groupId];
                    return ListTile(
                      leading: const Icon(Icons.chat_bubble_outline),
                      title: Text(group?.name ?? 'Đang tải...'),
                      subtitle: Text(group?.description ?? ''),
                    );
                  }).toList(),
            ),
          );
        }
        return const Card(
          child: ListTile(title: Text("Chưa tham gia nhóm chat nào.")),
        );
      },
    );
  }
}

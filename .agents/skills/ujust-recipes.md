# ujust Recipes Skill for Dakota

The `ujust` command provides human- and agent-friendly tasks for system diagnostics, feedback loops, and local testing.

## Standards
- Keep scripts non-interactive when flags like `--yes` or `-y` are passed.
- Use `gum` for rich terminal UI if available, with graceful plaintext fallbacks.
- Hardware reports must scrub user identifiers, secrets, and MAC addresses.

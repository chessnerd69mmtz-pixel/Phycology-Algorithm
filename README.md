# Ary AI — Phycology Algorithm

This is the **Phycology-Algorithm** repository for the Ary AI / WhatsApp conversation-analysis project.

## API keys are user-supplied

**No private API key is committed here.** The repository contains only blank provider configuration and a Windows setup script that asks each user for their own keys locally.

Supported environment variables:

- `UNLIMITLESS_API_KEY`
- `MISTRAL_API_KEY`
- `GROQ_API_KEY`

The repository excludes `.env`, databases, WhatsApp authentication state, logs, and other local secrets through `.gitignore`.

### Local setup

1. Clone the repository.
2. Copy `.env.example` to `.env`, or run **`SET AI API KEYS.cmd`**.
3. Enter **your own** API keys locally.
4. Run **`Ary AI Execute.cmd`**.

The API keys are never intended to be hard-coded into browser files or committed to GitHub.

## Provider behavior

The current cloud generation path is:

**Mistral → Groq fallback**

The Unlimitless key is accepted and stored locally. The application does not invent an undocumented Unlimitless chat-completions endpoint.

## Upload status

The repository has been initialized with the secret-safe configuration, Windows API-key setup, package manifest, README, and the Ary AI HTML shell. The complete 8.24.2 application is distributed as the corresponding Windows ZIP package; the GitHub connector used here does not expose a binary-archive upload operation, so the remaining application source/archive files are not being falsely represented as committed when they are not.

## Security

Never commit a real API key.

Recommended local files that must remain untracked:

```
.env
data/
auth_info_baileys/
*.db
*.sqlite
*.sqlite3
*.log
```

The repository was checked for common Groq/OpenAI-style secret prefixes and no such secret was found.

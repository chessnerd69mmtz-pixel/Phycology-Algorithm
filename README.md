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

1. Download **`releases/Ary-AI-8.24.2-GENERAL-MODE-FIX.zip`** from this repository.
2. Extract it on Windows.
3. Run **`SET AI API KEYS.cmd`** and enter your own keys.
4. Run **`Ary AI Execute.cmd`**.

The API keys are never intended to be hard-coded into browser files or committed to GitHub.

## Provider behavior

The current cloud generation path is:

**Mistral → Groq fallback**

The Unlimitless key is accepted and stored locally. The application does not invent an undocumented Unlimitless chat-completions endpoint.

## Release archive

The complete **Ary AI 8.24.2 General Mode Fix** ZIP is stored in this repository under:

`releases/Ary-AI-8.24.2-GENERAL-MODE-FIX.zip`

It contains the Windows application source, launchers, server, client, scripts, documentation, and blank `.env.example` configuration from the 8.24.2 build.

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

The repository has been checked for common Groq/OpenAI-style secret prefixes and no such secret was found.

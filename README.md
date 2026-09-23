# Ary AI — Phycology Algorithm

This repository hosts the Ary AI / WhatsApp conversation-analysis project and its public GitHub Pages landing page.

## Public site

After GitHub Pages is enabled for the `main` branch root, the public site will be:

**https://chessnerd69mmtz-pixel.github.io/Phycology-Algorithm/**

The landing page includes the Windows download and official links to obtain the supported AI provider keys.

## API keys are user-supplied

**No private API key is committed here.** Each user supplies their own credentials locally.

Supported environment variables:

- `UNLIMITLESS_API_KEY`
- `MISTRAL_API_KEY`
- `GROQ_API_KEY`

The repository excludes `.env`, databases, WhatsApp authentication state, logs, and other local secrets through `.gitignore`.

## Official API-key links

- **Groq:** https://console.groq.com/keys
- **Mistral:** https://docs.mistral.ai/admin/identity-access/api-keys
- **Unlimitless:** https://unlimitless.ai/developers

## Local setup

1. Download `releases/Ary-AI-8.24.2-GENERAL-MODE-FIX.zip`.
2. Extract it on Windows.
3. Run **`SET AI API KEYS.cmd`** and enter your own keys.
4. Run **`Ary AI Execute.cmd`**.
5. Connect WhatsApp when the QR/session flow appears.

## Provider behavior

The current cloud generation path is:

**Mistral → Groq fallback**

The Unlimitless credential is accepted and stored locally. The application does not invent an undocumented Unlimitless chat-completions endpoint.

## GitHub Pages vs. the full application

The root `index.html` is the public landing/download page. GitHub Pages serves that static page only; it does not run the Node/Express + WhatsApp backend.

The complete Windows application is distributed in:

`releases/Ary-AI-8.24.2-GENERAL-MODE-FIX.zip`

## Security

Never commit a real API key.

Keep these local files untracked:

```
.env
data/
auth_info_baileys/
*.db
*.sqlite
*.sqlite3
*.log
```

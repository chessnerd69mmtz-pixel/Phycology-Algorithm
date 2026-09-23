# Ary AI — Phycology Algorithm

This repository contains the Ary AI / WhatsApp psychology-analysis application based on the 8.24.2 build.

## API keys are user-supplied

**No private API key is included in this repository.** The application reads provider credentials from a local `.env` file on the user's own device.

Copy `.env.example` to `.env`, or run **`SET AI API KEYS.cmd`** on Windows and enter your own keys locally.

Supported credentials:

- `UNLIMITLESS_API_KEY`
- `MISTRAL_API_KEY`
- `GROQ_API_KEY`

The `.gitignore` explicitly excludes `.env` and other local credentials/runtime data from Git.

## AI provider behavior

The current 8.24.2 build uses Mistral for cloud generation and Groq as fallback. The Unlimitless key is accepted and stored locally, but this build does not invent or assume an undocumented Unlimitless chat-completions endpoint.

## Windows startup

Run **`Ary AI Execute.cmd`**. On first launch it asks for the user's own API keys before the WhatsApp server starts and before the QR/session flow begins.

## Privacy / secrets

Do not commit real keys into GitHub. Do not paste keys into `public/app.js`, HTML, CSS, issue comments, README files, or browser-side code.

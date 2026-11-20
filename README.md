# resume-builder template

A ready-to-use repo for [resume-builder](https://github.com/EndLess728/resume-builder): write your resume in YAML, push, and get a polished PDF. Optionally, it can keep the PDF on Google Drive behind one permanent link and message you on Telegram.

> **Want to see it first?** This repo builds its example resume like any other copy: see the [Actions tab](../../actions) for real runs, and [`rendercv_output/`](./rendercv_output) for the generated PDF.

## Get started

### 1. Create your copy (private)

Click **[Use this template](https://github.com/new?template_name=resume-builder-template&template_owner=EndLess728) → Create a new repository**, and choose **Private**. A resume has your phone number and email on it, and in a private repo the build logs, artifacts and PDFs stay private too.

Your new repo builds the example resume straight away, so check its **Actions** tab for a green run.

### 2. Make it yours

Edit [`My_CV.yaml`](./My_CV.yaml) with your own details and push. Every push to that file rebuilds the PDF into `rendercv_output/`. You can also download it from the run's **Artifacts**.

- The PDF is named after the `name` in your CV, e.g. `Jane_Doe_CV.pdf`.
- Want a different look? Change `design.theme` to `classic`, `sb2nov` or `moderncv`.
- Renamed `My_CV.yaml`? Update the two places it appears in [`.github/workflows/resume.yml`](./.github/workflows/resume.yml).

### 3. Optional: Google Drive and Telegram

Add any of these under **Settings → Secrets and variables → Actions → New repository secret**. Each feature turns on by itself once its secrets exist.

| Secret                     | What it does                                                                                                       |
| -------------------------- | ------------------------------------------------------------------------------------------------------------------ |
| `GOOGLE_DRIVE_CREDENTIALS` | Service-account JSON key. Uploads the PDF to Drive on every build. [Setup guide](https://github.com/EndLess728/resume-builder/blob/main/.github/actions/google-drive-upload/SETUP.md) |
| `GOOGLE_DRIVE_FILE_ID`     | The Drive file to update in place, so your share link never changes.                                               |
| `TELEGRAM_BOT_TOKEN`       | Bot token from [@BotFather](https://t.me/BotFather).                                                               |
| `TELEGRAM_CHAT_ID`         | Your chat ID. Message your bot, then read `chat.id` from `https://api.telegram.org/bot<TOKEN>/getUpdates`.         |

Then go to **Actions → Resume → Run workflow** to try it.

## What's in here

```
My_CV.yaml                      your resume (the only file you need to edit)
.github/workflows/resume.yml    runs resume-builder; optional settings are listed there
rendercv_output/                the generated PDF and PNG previews (created by the workflow)
```

## Render locally (optional)

```bash
pipx install "rendercv[full]>=2.6"
rendercv render --watch My_CV.yaml   # re-renders every time you save
```

## Help

Everything else (inputs, outputs, versions, modules) is in the [resume-builder README](https://github.com/EndLess728/resume-builder#readme). Found a bug or want a feature? [Open an issue](https://github.com/EndLess728/resume-builder/issues).

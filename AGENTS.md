# Codex Notes For This Repo (`canvas-jekyll-theme`)

## What This Repo Is
This repo is the **Canvas LMS theme override** (CSS/JS/theme assets), built and managed as a Jekyll theme-style repo.

This is the place to fix:
- Canvas UI/chrome issues (layout wrappers, sidebars, spacing, Canvas-injected elements).
- Canvas-specific embed quirks (for example, wrappers Canvas injects around iframes).
- Cross-course styling that should apply inside Canvas for all pages using this theme.

This repo is **not** the course content site (for example `~/foa-website`). Content site styling belongs there.

## Rule Of Thumb: Where Fixes Belong
### Change this repo when:
- The bug only happens inside Canvas.
- The fix involves Canvas UI/chrome selectors (common examples: `.ic-*`, `#wrapper`, `#content`, `#left-side`, `#right-side-wrapper`).
- Canvas injects/rewrites markup around embeds and we need to override its inline sizing/wrappers.

### Do NOT change this repo when:
- The fix is purely about the public course website rendering (non-Canvas).
- The fix is content-specific and should be controlled by the course site repo (for example `~/foa-website`).

If something needs to work in both Canvas and the public site, implement the styling in both places rather than adding broad CSS in one repo that tries to guess the other environment.

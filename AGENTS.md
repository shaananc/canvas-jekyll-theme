# Codex Notes For This Repo (`canvas-jekyll-theme`)

## What This Repo Is
This repo is a **shared Jekyll theme gem** used to generate course pages/content that later get embedded/served in different contexts.

It is **not** the same thing as the **Canvas LMS "Theme"** (the CSS/JS package uploaded in Canvas Admin). Those Canvas theme override packages are maintained separately.

## Two Downstream Themes
This gem is consumed by **two different downstream Canvas theme setups** (two separate theme override packages).

Implication: changes in this repo must not accidentally couple those two themes together.

## Rule Of Thumb: Where Fixes Belong
### Change this repo when:
- The fix is **content-level** and should apply everywhere the content is rendered.
- The fix is driven by **classes we control** in the generated HTML (example: `.youtube-wrapper`, `.table.sched`, `.venue-pill`).
- The fix can be expressed without relying on Canvas-only DOM structure (no `.ic-*` selectors, no Canvas page chrome assumptions).

### Do NOT change this repo when:
- The fix is **theme chrome / Canvas UI** (headers, nav, layout wrappers, right sidebar, global Canvas elements).
- The fix depends on **Canvas-injected wrappers/overlays** or Canvas-only markup around our content.
- The fix would require overriding broad selectors that can interfere with other themes or other render contexts.

In those cases, modify the **downstream Canvas theme override package(s)** directly.

## Avoid Theme-Coupling CSS
To keep the two downstream themes separable:
- Prefer **opt-in, class-scoped CSS** over global overrides.
- Avoid adding or expanding selectors that target Canvas UI chrome (anything `ic-*`, `#wrapper`, global layout containers).
- If a behavior should exist in both downstream themes, still prefer implementing it in the theme override repos unless it is strictly content-scoped.

## Where The Actual Canvas Themes Live
The Canvas theme override packages can be:
- Cloned from GitHub as needed, or
- Already checked out somewhere under `~` on this machine.

When a change is Canvas-theme-specific, make it in those theme repos, not here.


# Compliance checklist

This is what was checked on the storefront and what changed. Items marked **Owner** need your input before launch. None of this is legal advice: have a lawyer review the policies before you take real orders.

## Third-party services audit

| Service | Was | Now |
| --- | --- | --- |
| Google Fonts (fonts.googleapis.com, fonts.gstatic.com) | Loaded on every page view, sending each visitor's IP address to Google | Removed. Fonts are self-hosted in `fonts/` |
| Analytics, ad pixels, chat widgets | None | None |
| Payment provider | None (demo checkout) | None. **Owner:** when you add one (Stripe, Shopify, etc.), name it in the privacy policy and update the cookie policy if it sets cookies |
| Other scripts | None | None. The page loads no external scripts |

## Cookies and storage

- The site uses no cookies. It stores two items in the browser's local storage: `handshake-cart` and `handshake-cookie-notice`. Both are strictly necessary, so consent isn't required. The notice tells visitors this and links to the cookie policy.
- If you ever add analytics or marketing tags, you'll need a real consent banner with "Accept" and "Reject" buttons of equal weight, and the tags must not load until someone accepts.

## Data collected

Only what's needed to make and ship the order: engraving text, an optional logo, and at checkout a name, shipping address and email. Title is optional. No account, phone number or birthday is asked for.

## Forms and consent

- The checkout has an unchecked box to agree to the terms, and checkout is blocked until it's ticked.
- Marketing emails have their own separate, optional, unchecked box.
- Engraving fields start empty. The preview shows sample text, but the sample text can't be ordered by mistake: Customized needs a real name.

## Dark patterns removed

- The "Most popular" badge (no sales data supported it).
- Notifications that looked like live activity ("Contact saved, Alex Rivera, just now"). They are now labeled as examples.
- The free-shipping progress bar (it nudged people to spend more).
- Prefilled sample names that could be ordered without noticing.

## Pricing and fees

Shipping ($6, or free from $75) is shown on every product page, in the comparison table, the FAQ and the cart before checkout. Sales tax is shown as its own line. The metal finish surcharge is shown on the button that selects it. There are no other fees.

## Reviews

There were no reviews on the site. A reviews section now shows an honest empty state. Add only reviews from real buyers to the `REVIEWS` list in `src/store.html` and set `verified: true`. Don't edit, hand-pick, or pay for reviews: the FTC's 2024 rule on fake reviews applies.

## Claims removed or reworded

- "Comes with a free profile page you can edit any time": the store doesn't provide one. **Owner:** if you do offer a profile service, tell me and I'll add it back accurately.
- "Change your details without reprinting": this is only true if the card links to a page the customer can edit.
- "Rated for 100k taps", the chip model, memory and weights: there was no evidence for them, so they are gone.
- "Ships in 3 to 5 days" is now a placeholder. **Owner:** confirm it.
- iPhone compatibility now says "most iPhones from the iPhone XS onward" rather than "any phone".

## Accessibility (WCAG 2.2 AA)

- Contrast: blue buttons in dark mode were 3.8:1. They now use a darker blue in both themes (6.1:1). The outlined "Stay" headline text is brighter. All body text tokens are 5.4:1 or better.
- Keyboard: a skip link was added. The logo upload can now be reached with the keyboard (it was hidden from Tab). Focus moves to the page heading after each page change. Cart buttons keep focus after a change. All controls show a visible focus ring.
- Screen readers: card previews have descriptive labels, the uploaded logo has alt text, color swatches have color names, the comparison table has a caption, quantity buttons name the product, and form errors are announced.
- Motion: animations are off when the visitor's system asks for reduced motion.

## Emails

`emails/order-confirmation.html` (transactional) and `emails/marketing.html` (needs a one-click unsubscribe link and your postal address). Send marketing only to people who ticked the box.

## Fonts

Bricolage Grotesque, Instrument Sans and JetBrains Mono are under the SIL Open Font License 1.1. License files are in `fonts/`, and the site credits them on its "Font licenses" page.

## Owner to-do before launch

1. Fill in `BUSINESS` in `src/store.html`: legal name, address, email, phone, registration or tax ID, governing law and shipping time.
2. Fill in the highlighted items in the privacy and refund policies: providers, retention periods, return shipping and warranty length.
3. Have a lawyer review the four policies.
4. Connect a real checkout and email provider, then update the privacy policy with their names.

# GitHub Pages Setup

This document describes how to enable GitHub Pages for the michael-docs site.

## Enable GitHub Pages

1. Go to the repository: https://github.com/JuniperBible/michael-docs

2. Navigate to: Settings → Pages

3. Configure the source:
   - **Source**: GitHub Actions
   - This uses the workflow defined in `.github/workflows/docs.yml`

4. Click "Save"

## Workflow Configuration

The deployment workflow (`.github/workflows/docs.yml`) automatically:

1. Builds the Hugo site on push to `main`
2. Uploads the built site as an artifact
3. Deploys to GitHub Pages

## Custom Domain (Optional)

To use a custom domain:

1. In repository Settings → Pages:
   - Enter your custom domain (e.g., `docs.juniperbible.org`)
   - Check "Enforce HTTPS"

2. Add DNS records:
   ```
   # For apex domain (juniperbible.org)
   A     @     185.199.108.153
   A     @     185.199.109.153
   A     @     185.199.110.153
   A     @     185.199.111.153

   # For subdomain (docs.juniperbible.org)
   CNAME docs  juniperbible.github.io
   ```

3. Create `static/CNAME` file:
   ```
   docs.juniperbible.org
   ```

## Verification

After enabling:

1. Push a commit to trigger the workflow
2. Check Actions tab for workflow status
3. Visit: https://juniperbible.github.io/michael-docs/

## Troubleshooting

### Build Fails

Check the Actions tab for error details. Common issues:
- Hugo version mismatch
- Missing go.mod for Hugo modules
- Theme not found

### 404 After Deploy

- Ensure `baseURL` in `hugo.toml` matches the GitHub Pages URL
- Check that `publishDir` is `public` (default)

### CSS/JS Not Loading

- Verify `baseURL` includes the repository name for project sites
- Current config: `baseURL = "https://juniperbible.github.io/michael-docs/"`

Package: `effect`<br />
Module: `HttpApiScalar`<br />

## HttpApiScalar.ScalarConfig

Configuration passed to the embedded Scalar API reference UI.

**See**

- https://github.com/scalar/scalar/blob/main/documentation/configuration.md

**Signature**

```ts
type ScalarConfig = {
  /** A string to use one of the color presets */
  theme?: ScalarThemeId
  /** The layout to use for the references */
  layout?: "modern" | "classic"
  /** URL to a request proxy for the API client */
  proxyUrl?: string
  /** Whether to show the sidebar */
  showSidebar?: boolean
  /**
   * Whether to show models in the sidebar, search, and content.
   *
   * @default false
   */
  hideModels?: boolean
  /**
   * Whether to show the "Test Request" button.
   *
   * @default false
   */
  hideTestRequestButton?: boolean
  /**
   * Whether to show the sidebar search bar.
   *
   * @default false
   */
  hideSearch?: boolean
  /** Whether dark mode is on or off initially (light mode) */
  darkMode?: boolean
  /** forceDarkModeState makes it always this state no matter what */
  forceDarkModeState?: "dark" | "light"
  /** Whether to show the dark mode toggle */
  hideDarkModeToggle?: boolean
  /**
   * Path to a favicon image.
   *
   * **Example** (Relative favicon)
   *
   * ```ts
   * const favicon = "/favicon.svg"
   * ```
   *
   * @default undefined
   */
  favicon?: string
  /** Custom CSS to be added to the page */
  customCss?: string
  /**
   * Origin used when the OpenAPI document contains relative server URLs and is
   * rendered during SSR.
   *
   * **Details**
   *
   * Browsers can derive the origin from `window.location.origin`; server
   * rendering needs this value supplied explicitly.
   *
   * **Example** (Local server URL)
   *
   * ```ts
   * const baseServerURL = "http://localhost:3000"
   * ```
   *
   * @default undefined
   */
  baseServerURL?: string
  /**
   * Whether Scalar loads its default Inter and JetBrains Mono fonts.
   *
   * **Details**
   *
   * Set this to `false` when supplying custom fonts.
   *
   * @default true
   */
  withDefaultFonts?: boolean
  /**
   * Whether all tags are open by default instead of only the tag matching the
   * current URL.
   *
   * @default false
   */
  defaultOpenAllTags?: boolean
  /**
   * Whether to display the operation ID in the operation reference.
   *
   * @default false
   */
  showOperationId?: boolean
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiScalar.ts#L61)

Since v4.0.0
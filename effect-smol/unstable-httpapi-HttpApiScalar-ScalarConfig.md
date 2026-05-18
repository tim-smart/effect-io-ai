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
   * Default: `false`
   */
  hideModels?: boolean
  /**
   * Whether to show the "Test Request" button.
   *
   * Default: `false`
   */
  hideTestRequestButton?: boolean
  /**
   * Whether to show the sidebar search bar.
   *
   * Default: `false`
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
   * Default: `undefined`
   * Example: "/favicon.svg"
   */
  favicon?: string
  /** Custom CSS to be added to the page */
  customCss?: string
  /**
   * The baseServerURL is used when the spec servers are relative paths and we are using SSR.
   * On the client we can grab the window.location.origin but on the server we need
   * to use this prop.
   *
   * Default: `undefined`
   * Example: "http://localhost:3000"
   */
  baseServerURL?: string
  /**
   * We use Inter and JetBrains Mono as the default fonts. If you want to use your own fonts, set this to false.
   *
   * Default: `true`
   */
  withDefaultFonts?: boolean
  /**
   * By default we only open the relevant tag based on the url, however if you want all the tags open by default then set this configuration option.
   *
   * Default: `false`
   */
  defaultOpenAllTags?: boolean
  /**
   * Whether to display the operation ID in the operation reference.
   *
   * Default: `false`
   */
  showOperationId?: boolean
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiScalar.ts#L61)

Since v4.0.0
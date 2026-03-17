Package: `effect`<br />
Module: `Url`<br />

## Url.fromString

Parses a URL string into a `URL` object, returning an `Result` type for safe
error handling.

**Details**

This function converts a string into a `URL` object, enabling safe URL
parsing with built-in error handling. If the string is invalid or fails to
parse, this function does not throw an error; instead, it wraps the error in
a `IllegalArgumentError` and returns it as the `Failure` value of an
`Result`. The `Success` value contains the successfully parsed `URL`.

An optional `base` parameter can be provided to resolve relative URLs. If
specified, the function interprets the input `url` as relative to this
`base`. This is especially useful when dealing with URLs that might not be
fully qualified.

**Example**

```ts
import { Url } from "effect/unstable/http"
import { Result } from "effect"

// Parse an absolute URL
//
//      ┌─── Result<URL, IllegalArgumentError>
//      ▼
const parsed = Url.fromString("https://example.com/path")

if (Result.isSuccess(parsed)) {
  console.log("Parsed URL:", parsed.success.toString())
} else {
  console.log("Error:", parsed.failure.message)
}
// Output: Parsed URL: https://example.com/path

// Parse a relative URL with a base
const relativeParsed = Url.fromString("/relative-path", "https://example.com")

if (Result.isSuccess(relativeParsed)) {
  console.log("Parsed relative URL:", relativeParsed.success.toString())
} else {
  console.log("Error:", relativeParsed.failure.message)
}
// Output: Parsed relative URL: https://example.com/relative-path
```

**Signature**

```ts
declare const fromString: (url: string, base?: string | URL | undefined) => Result.Result<URL, Cause.IllegalArgumentError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Url.ts#L60)

Since v4.0.0
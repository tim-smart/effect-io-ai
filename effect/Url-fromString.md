## fromString

Parses a URL string into a `URL` object, returning an `Either` type for safe
error handling.

**Details**

This function converts a string into a `URL` object, enabling safe URL
parsing with built-in error handling. If the string is invalid or fails to
parse, this function does not throw an error; instead, it wraps the error in
a `IllegalArgumentException` and returns it as the `Left` value of an
`Either`. The `Right` value contains the successfully parsed `URL`.

An optional `base` parameter can be provided to resolve relative URLs. If
specified, the function interprets the input `url` as relative to this
`base`. This is especially useful when dealing with URLs that might not be
fully qualified.

**Example**

```ts
import { Url } from "@effect/platform"
import { Either } from "effect"

// Parse an absolute URL
//
//      ┌─── Either<URL, IllegalArgumentException>
//      ▼
const parsed = Url.fromString("https://example.com/path")

if (Either.isRight(parsed)) {
  console.log("Parsed URL:", parsed.right.toString())
} else {
  console.log("Error:", parsed.left.message)
}
// Output: Parsed URL: https://example.com/path

// Parse a relative URL with a base
const relativeParsed = Url.fromString("/relative-path", "https://example.com")

if (Either.isRight(relativeParsed)) {
  console.log("Parsed relative URL:", relativeParsed.right.toString())
} else {
  console.log("Error:", relativeParsed.left.message)
}
// Output: Parsed relative URL: https://example.com/relative-path
```

**Signature**

```ts
declare const fromString: (url: string, base?: string | URL | undefined) => Either.Either<URL, Cause.IllegalArgumentException>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Url.ts#L58)

Since v1.0.0
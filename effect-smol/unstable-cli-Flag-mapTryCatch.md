Package: `effect`<br />
Module: `Flag`<br />

## Flag.mapTryCatch

Transforms the parsed value using a function that might throw, with error handling.

**Example**

```ts
import { Flag } from "effect/unstable/cli"

// Parse JSON string with error handling
const jsonFlag = Flag.string("config").pipe(
  Flag.mapTryCatch(
    (json) => JSON.parse(json),
    (error) => `Invalid JSON: ${error}`
  )
)

// Parse URL with error handling
const urlFlag = Flag.string("url").pipe(
  Flag.mapTryCatch(
    (url) => new URL(url),
    (error) => `Invalid URL: ${error}`
  )
)
```

**Signature**

```ts
declare const mapTryCatch: { <A, B>(f: (a: A) => B, onError: (error: unknown) => string): (self: Flag<A>) => Flag<B>; <A, B>(self: Flag<A>, f: (a: A) => B, onError: (error: unknown) => string): Flag<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L628)

Since v4.0.0
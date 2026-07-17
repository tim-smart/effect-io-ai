Package: `effect`<br />
Module: `FiberHandle`<br />

## FiberHandle.isFiberHandle

Returns `true` if a value is a `FiberHandle` by checking for the
`FiberHandle` runtime marker.

**Example** (Checking fiber handles)

```ts
import { Effect, FiberHandle } from "effect"

Effect.gen(function*() {
  const handle = yield* FiberHandle.make()

  console.log(FiberHandle.isFiberHandle(handle)) // true
  console.log(FiberHandle.isFiberHandle("not a handle")) // false
})
```

**Signature**

```ts
declare const isFiberHandle: (u: unknown) => u is FiberHandle
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberHandle.ts#L86)

Since v2.0.0
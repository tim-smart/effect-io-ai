Package: `effect`<br />
Module: `Micro`<br />

## Micro.try

The `Micro` equivalent of a try / catch block, which allows you to map
thrown errors to a specific error type.

**Example**

```ts
import { Micro } from "effect"

Micro.try({
  try: () => { throw new Error("boom") },
  catch: (cause) => new Error("caught", { cause })
})
```

**Signature**

```ts
declare const try: <A, E>(options: { try: LazyArg<A>; catch: (error: unknown) => E; }) => Micro<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L1050)

Since v3.4.0
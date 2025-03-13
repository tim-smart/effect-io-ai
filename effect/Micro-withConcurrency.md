Package: `effect`<br />
Module: `Micro`<br />

## Micro.withConcurrency

If you have a `Micro` that uses `concurrency: "inherit"`, you can use this
api to control the concurrency of that `Micro` when it is run.

**Example**

```ts
import * as Micro from "effect/Micro"

Micro.forEach([1, 2, 3], (n) => Micro.succeed(n), {
  concurrency: "inherit"
}).pipe(
  Micro.withConcurrency(2) // use a concurrency of 2
)
```

**Signature**

```ts
declare const withConcurrency: { (concurrency: "unbounded" | number): <A, E, R>(self: Micro<A, E, R>) => Micro<A, E, R>; <A, E, R>(self: Micro<A, E, R>, concurrency: "unbounded" | number): Micro<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2082)

Since v3.4.0
Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.dieSync

Kills the `Deferred` with the specified defect, which will be propagated to
all fibers waiting on the value of the `Deferred`.

**Example**

```ts
import { Deferred, Effect } from "effect"

const program = Effect.gen(function*() {
  const deferred = yield* Deferred.make<number>()
  const success = yield* Deferred.dieSync(
    deferred,
    () => new Error("Lazy error")
  )
  console.log(success) // true
})
```

**Signature**

```ts
declare const dieSync: { (evaluate: LazyArg<unknown>): <A, E>(self: Deferred<A, E>) => Effect<boolean>; <A, E>(self: Deferred<A, E>, evaluate: LazyArg<unknown>): Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L478)

Since v2.0.0
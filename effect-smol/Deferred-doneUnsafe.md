Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.doneUnsafe

Unsafely exits the `Deferred` with the specified `Exit` value, which will be
propagated to all fibers waiting on the value of the `Deferred`.

**Example**

```ts
import { Deferred, Effect } from "effect"

const deferred = Deferred.makeUnsafe<number>()
const success = Deferred.doneUnsafe(deferred, Effect.succeed(42))
console.log(success) // true
```

**Signature**

```ts
declare const doneUnsafe: <A, E>(self: Deferred<A, E>, effect: Effect<A, E>) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L665)

Since v2.0.0
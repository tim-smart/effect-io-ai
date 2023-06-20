# isEmpty

Returns `true` if the `Queue` contains zero elements, `false` otherwise.

To import and use `isEmpty` from the "Hub" module:

```ts
import * as Hub from '@effect/io/Hub'

// Can be accessed like this
Hub.isEmpty
```

**Signature**

```ts
export declare const isEmpty: <A>(self: Hub<A>) => Effect.Effect<never, never, boolean>
```

# isFull

Returns `true` if the `Queue` contains at least one element, `false`
otherwise.

To import and use `isFull` from the "Hub" module:

```ts
import * as Hub from '@effect/io/Hub'

// Can be accessed like this
Hub.isFull
```

**Signature**

```ts
export declare const isFull: <A>(self: Hub<A>) => Effect.Effect<never, never, boolean>
```

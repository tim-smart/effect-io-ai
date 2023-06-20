# unsome

Converts an option on errors into an option on values.

To import and use `unsome` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.unsome
```

**Signature**

```ts
export declare const unsome: <R, E, A>(self: Effect<R, Option.Option<E>, A>) => Effect<R, E, Option.Option<A>>
```

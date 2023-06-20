# some

Converts an option on values into an option on errors.

To import and use `some` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.some
```

**Signature**

```ts
export declare const some: <R, E, A>(self: Effect<R, E, Option.Option<A>>) => Effect<R, Option.Option<E>, A>
```

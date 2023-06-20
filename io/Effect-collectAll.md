# collectAll

Collects the all element of the `Collection<A>` for which the effect returns a value.

To import and use `collectAll` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.collectAll
```

**Signature**

```ts
export declare const collectAll: <R, E, A>(elements: Iterable<Effect<R, E, Option.Option<A>>>) => Effect<R, E, A[]>
```

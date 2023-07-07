# never

Returns a effect that will never produce anything. The moral equivalent of
`while(true) {}`, only without the wasted CPU cycles.

To import and use `never` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.never
```

**Signature**

```ts
export declare const never: Effect<never, never, never>
```

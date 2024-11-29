# never

Returns an effect that will never produce anything. The moral equivalent of
`while(true) {}`, only without the wasted CPU cycles.

To import and use `never` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.never
undefined

**Signature**

```ts
export declare const never: Effect<never, never, never>
```

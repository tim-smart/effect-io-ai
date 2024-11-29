# registerScoped

Same as `register`, but will automatically call `unregister` when the `Scope` is terminated.

To import and use `registerScoped` from the "Sharding" module:

ts
import \* as Sharding from "@effect/cluster/Sharding"
// Can be accessed like this
Sharding.registerScoped
undefined

**Signature**

```ts
export declare const registerScoped: Effect.Effect<void, never, Sharding | Scope.Scope>
```

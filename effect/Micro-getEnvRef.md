# getEnvRef

Retrieve the current value of the given `EnvRef`.

To import and use `getEnvRef` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.getEnvRef
undefined

**Signature**

```ts
export declare const getEnvRef: <A>(envRef: EnvRef<A>) => Micro<A>
```

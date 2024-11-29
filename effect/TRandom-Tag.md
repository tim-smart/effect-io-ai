# Tag

The service tag used to access `TRandom` in the environment of an effect.

To import and use `Tag` from the "TRandom" module:

ts
import \* as TRandom from "effect/TRandom"
// Can be accessed like this
TRandom.Tag
undefined

**Signature**

```ts
export declare const Tag: Context.Tag<TRandom, TRandom>
```

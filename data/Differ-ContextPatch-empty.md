# empty

An empty patch which returns the environment unchanged.

To import and use `empty` from the "ContextPatch" module:

```ts
import * as ContextPatch from '@effect/data/Differ/ContextPatch'

// Can be accessed like this
ContextPatch.empty
```

**Signature**

```ts
export declare const empty: <Input = never, Output = never>() => ContextPatch<Input, Output>
```

# context

Access the current `Context` from the environment.

To import and use `context` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.context
```

**Signature**

```ts
export declare const context: <R>() => Micro<Context.Context<R>>
```

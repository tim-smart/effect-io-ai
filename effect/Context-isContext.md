# isContext

Checks if the provided argument is a `Context`.

To import and use `isContext` from the "Context" module:

```ts
import * as Context from "effect/Context"
// Can be accessed like this
Context.isContext
```

**Example**

```ts
import { Context } from "effect"

assert.strictEqual(Context.isContext(Context.empty()), true)
```

**Signature**

```ts
export declare const isContext: (input: unknown) => input is Context<never>
```

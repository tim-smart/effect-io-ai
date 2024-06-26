# isTag

Checks if the provided argument is a `Tag`.

To import and use `isTag` from the "Context" module:

```ts
import * as Context from "effect/Context"
// Can be accessed like this
Context.isTag
```

**Example**

```ts
import { Context } from "effect"

assert.strictEqual(Context.isTag(Context.GenericTag("Tag")), true)
```

**Signature**

```ts
export declare const isTag: (input: unknown) => input is Tag<any, any>
```

# GenericTag

Creates a new `Tag` instance with an optional key parameter.

To import and use `GenericTag` from the "Context" module:

```ts
import * as Context from "effect/Context"
// Can be accessed like this
Context.GenericTag
```

**Example**

```ts
import * as Context from "effect/Context"

assert.strictEqual(Context.GenericTag("PORT").key === Context.GenericTag("PORT").key, true)
```

**Signature**

```ts
export declare const GenericTag: <Identifier, Service = Identifier>(key: string) => Tag<Identifier, Service>
```

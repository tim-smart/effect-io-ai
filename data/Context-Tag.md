# Tag

Creates a new `Tag` instance with an optional key parameter.

Specifying the `key` will make the `Tag` global, meaning two tags with the same
key will map to the same instance.

Note: this is useful for cases where live reload can happen and it is
desireable to preserve the instance across reloads.

To import and use `Tag` from the "Context" module:

```ts
import * as Context from '@effect/data/Context'

// Can be accessed like this
Context.Tag
```

**Example**

```ts
import * as Context from '@effect/data/Context'

assert.strictEqual(Context.Tag() === Context.Tag(), false)
assert.strictEqual(Context.Tag('PORT') === Context.Tag('PORT'), true)
```

**Signature**

```ts
export declare const Tag: <Identifier, Service = Identifier>(identifier?: unknown) => Tag<Identifier, Service>
```

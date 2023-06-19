# isTag

Checks if the provided argument is a `Tag`.

Part of the `Context` module, imported from `@effect/data/Context`.

**Example**

```ts
import * as Context from '@effect/data/Context'

assert.strictEqual(Context.isTag(Context.Tag()), true)
```

**Signature**

```ts
export declare const isTag: (input: unknown) => input is Tag<any, any>
```

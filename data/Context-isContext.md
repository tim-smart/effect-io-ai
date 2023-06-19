# isContext

Checks if the provided argument is a `Context`.

Part of the `Context` module, imported from `@effect/data/Context`.

**Example**

```ts
import * as Context from '@effect/data/Context'

assert.strictEqual(Context.isContext(Context.empty()), true)
```

**Signature**

```ts
export declare const isContext: (input: unknown) => input is Context<never>
```

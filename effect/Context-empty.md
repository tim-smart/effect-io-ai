# empty

Returns an empty `Context`.

To import and use `empty` from the "Context" module:

```ts
import * as Context from 'effect/Context'

// Can be accessed like this
Context.empty
```

**Example**

```ts
import * as Context from 'effect/Context'

assert.strictEqual(Context.isContext(Context.empty()), true)
```

**Signature**

```ts
export declare const empty: () => Context<never>
```

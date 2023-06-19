# nominal

This function returns a `Brand.Constructor` that **does not apply any runtime checks**, it just returns the provided value.
It can be used to create nominal types that allow distinguishing between two values of the same type but with different meanings.

If you also want to perform some validation, see {@link refined}.

Part of the `Brand` module, imported from `@effect/data/Brand`.

**Example**

```ts
import * as Brand from '@effect/data/Brand'

type UserId = number & Brand.Brand<'UserId'>

const UserId = Brand.nominal<UserId>()

assert.strictEqual(UserId(1), 1)
```

**Signature**

```ts
export declare const nominal: <A extends Brand<any>>() => Brand.Constructor<A>
```

# as

Maps the `Some` value of this `Option` to the specified constant value.

To import and use `as` from the "Option" module:

```ts
import * as Option from 'effect/Option'

// Can be accessed like this
Option.as
```

**Signature**

```ts
export declare const as: <B>(b: B) => <_>(self: Option<_>) => Option<B>
```

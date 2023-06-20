# toOption

Convert a `FiberId` into an `Option<FiberId>`.

To import and use `toOption` from the "Id" module:

```ts
import * as Id from '@effect/io/Fiber/Id'

// Can be accessed like this
Id.toOption
```

**Signature**

```ts
export declare const toOption: (self: FiberId) => Option.Option<FiberId>
```

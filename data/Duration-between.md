# between

Checks if a `Duration` is between a `minimum` and `maximum` value.

To import and use `between` from the "Duration" module:

```ts
import * as Duration from '@effect/data/Duration'

// Can be accessed like this
Duration.between
```

**Signature**

```ts
export declare const between: {
  (minimum: Duration, maximum: Duration): (self: Duration) => boolean
  (self: Duration, minimum: Duration, maximum: Duration): boolean
}
```

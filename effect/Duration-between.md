# between

Checks if a `Duration` is between a `minimum` and `maximum` value.

To import and use `between` from the "Duration" module:

```ts
import * as Duration from 'effect/Duration'

// Can be accessed like this
Duration.between
```

**Signature**

```ts
export declare const between: {
  (minimum: DurationInput, maximum: DurationInput): (self: DurationInput) => boolean
  (self: DurationInput, minimum: DurationInput, maximum: DurationInput): boolean
}
```

# between

Checks if a `Duration` is between a `minimum` and `maximum` value.

To import and use `between` from the "Duration" module:

ts
import \* as Duration from "effect/Duration"
// Can be accessed like this
Duration.between
undefined

**Signature**

```ts
export declare const between: {
  (options: { minimum: DurationInput; maximum: DurationInput }): (self: DurationInput) => boolean
  (self: DurationInput, options: { minimum: DurationInput; maximum: DurationInput }): boolean
}
```

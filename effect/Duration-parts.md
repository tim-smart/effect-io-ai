# parts

Converts a `Duration` to its parts.

To import and use `parts` from the "Duration" module:

ts
import \* as Duration from "effect/Duration"
// Can be accessed like this
Duration.parts
undefined

**Signature**

```ts
export declare const parts: (self: DurationInput) => {
  days: number
  hours: number
  minutes: number
  seconds: number
  millis: number
  nanos: number
}
```

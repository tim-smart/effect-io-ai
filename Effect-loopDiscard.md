# loopDiscard

Loops with the specified effectual function purely for its effects. The
moral equivalent of:

```ts
let s = initial

while (cont(s)) {
  body(s)
  s = inc(s)
}
```

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.loopDiscard`.

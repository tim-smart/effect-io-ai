# windowed

A schedule that divides the timeline to `interval`-long windows, and sleeps
until the nearest window boundary every time it recurs.

For example, `windowed(Duration.seconds(10))` would produce a schedule as
follows:

```
     10s        10s        10s       10s
|----------|----------|----------|----------|
|action------|sleep---|act|-sleep|action----|
```

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const windowed: (interval: Duration.Duration) => Schedule<never, unknown, number>
```

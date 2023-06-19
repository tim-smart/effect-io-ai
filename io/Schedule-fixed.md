# fixed

A schedule that recurs on a fixed interval. Returns the number of
repetitions of the schedule so far.

If the action run between updates takes longer than the interval, then the
action will be run immediately, but re-runs will not "pile up".

```
|-----interval-----|-----interval-----|-----interval-----|
|---------action--------||action|-----|action|-----------|
```

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const fixed: (interval: Duration.Duration) => Schedule<never, unknown, number>
```

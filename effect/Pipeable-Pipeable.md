Package: `effect`<br />
Module: `Pipeable`<br />

## Pipeable.Pipeable

Interface for values that support method-style `pipe` composition.

**When to use**

Use to type values that expose an Effect-style `.pipe(...)` method.

**Details**

Calling `value.pipe(f, g, h)` passes the value through each function from
left to right, returning the final result. Many Effect data types implement
this so operations can be chained without nesting function calls.

**Example** (Chaining operations with pipe)

```ts
import { Effect } from "effect"

// The Pipeable interface allows Effect values to be chained using the pipe method
const program = Effect.succeed(1).pipe(
  Effect.map((x) => x + 1),
  Effect.flatMap((x) => Effect.succeed(x * 2)),
  Effect.tap((x) => Effect.log(`Result: ${x}`))
)
```

**Signature**

```ts
export interface Pipeable {
  pipe<A>(this: A): A
  pipe<A, B = never>(this: A, ab: (_: A) => B): B
  pipe<A, B = never, C = never>(this: A, ab: (_: A) => B, bc: (_: B) => C): C
  pipe<A, B = never, C = never, D = never>(this: A, ab: (_: A) => B, bc: (_: B) => C, cd: (_: C) => D): D
  pipe<A, B = never, C = never, D = never, E = never>(
    this: A,
    ab: (_: A) => B,
    bc: (_: B) => C,
    cd: (_: C) => D,
    de: (_: D) => E
  ): E
  pipe<A, B = never, C = never, D = never, E = never, F = never>(
    this: A,
    ab: (_: A) => B,
    bc: (_: B) => C,
    cd: (_: C) => D,
    de: (_: D) => E,
    ef: (_: E) => F
  ): F
  pipe<A, B = never, C = never, D = never, E = never, F = never, G = never>(
    this: A,
    ab: (_: A) => B,
    bc: (_: B) => C,
    cd: (_: C) => D,
    de: (_: D) => E,
    ef: (_: E) => F,
    fg: (_: F) => G
  ): G
  pipe<A, B = never, C = never, D = never, E = never, F = never, G = never, H = never>(
    this: A,
    ab: (_: A) => B,
    bc: (_: B) => C,
    cd: (_: C) => D,
    de: (_: D) => E,
    ef: (_: E) => F,
    fg: (_: F) => G,
    gh: (_: G) => H
  ): H
  pipe<A, B = never, C = never, D = never, E = never, F = never, G = never, H = never, I = never>(
    this: A,
    ab: (_: A) => B,
    bc: (_: B) => C,
    cd: (_: C) => D,
    de: (_: D) => E,
    ef: (_: E) => F,
    fg: (_: F) => G,
    gh: (_: G) => H,
    hi: (_: H) => I
  ): I
  pipe<A, B = never, C = never, D = never, E = never, F = never, G = never, H = never, I = never, J = never>(
    this: A,
    ab: (_: A) => B,
    bc: (_: B) => C,
    cd: (_: C) => D,
    de: (_: D) => E,
    ef: (_: E) => F,
    fg: (_: F) => G,
    gh: (_: G) => H,
    hi: (_: H) => I,
    ij: (_: I) => J
  ): J
  pipe<A, B = never, C = never, D = never, E = never, F = never, G = never, H = never, I = never, J = never, K = never>(
    this: A,
    ab: (_: A) => B,
    bc: (_: B) => C,
    cd: (_: C) => D,
    de: (_: D) => E,
    ef: (_: E) => F,
    fg: (_: F) => G,
    gh: (_: G) => H,
    hi: (_: H) => I,
    ij: (_: I) => J,
    jk: (_: J) => K
  ): K
  pipe<
    A,
    B = never,
    C = never,
    D = never,
    E = never,
    F = never,
    G = never,
    H = never,
    I = never,
    J = never,
    K = never,
    L = never
  >(
    this: A,
    ab: (_: A) => B,
    bc: (_: B) => C,
    cd: (_: C) => D,
    de: (_: D) => E,
    ef: (_: E) => F,
    fg: (_: F) => G,
    gh: (_: G) => H,
    hi: (_: H) => I,
    ij: (_: I) => J,
    jk: (_: J) => K,
    kl: (_: K) => L
  ): L
  pipe<
    A,
    B = never,
    C = never,
    D = never,
    E = never,
    F = never,
    G = never,
    H = never,
    I = never,
    J = never,
    K = never,
    L = never,
    M = never
  >(
    this: A,
    ab: (_: A) => B,
    bc: (_: B) => C,
    cd: (_: C) => D,
    de: (_: D) => E,
    ef: (_: E) => F,
    fg: (_: F) => G,
    gh: (_: G) => H,
    hi: (_: H) => I,
    ij: (_: I) => J,
    jk: (_: J) => K,
    kl: (_: K) => L,
    lm: (_: L) => M
  ): M
  pipe<
    A,
    B = never,
    C = never,
    D = never,
    E = never,
    F = never,
    G = never,
    H = never,
    I = never,
    J = never,
    K = never,
    L = never,
    M = never,
    N = never
  >(
    this: A,
    ab: (_: A) => B,
    bc: (_: B) => C,
    cd: (_: C) => D,
    de: (_: D) => E,
    ef: (_: E) => F,
    fg: (_: F) => G,
    gh: (_: G) => H,
    hi: (_: H) => I,
    ij: (_: I) => J,
    jk: (_: J) => K,
    kl: (_: K) => L,
    lm: (_: L) => M,
    mn: (_: M) => N
  ): N
  pipe<
    A,
    B = never,
    C = never,
    D = never,
    E = never,
    F = never,
    G = never,
    H = never,
    I = never,
    J = never,
    K = never,
    L = never,
    M = never,
    N = never,
    O = never
  >(
    this: A,
    ab: (_: A) => B,
    bc: (_: B) => C,
    cd: (_: C) => D,
    de: (_: D) => E,
    ef: (_: E) => F,
    fg: (_: F) => G,
    gh: (_: G) => H,
    hi: (_: H) => I,
    ij: (_: I) => J,
    jk: (_: J) => K,
    kl: (_: K) => L,
    lm: (_: L) => M,
    mn: (_: M) => N,
    no: (_: N) => O
  ): O
  pipe<
    A,
    B = never,
    C = never,
    D = never,
    E = never,
    F = never,
    G = never,
    H = never,
    I = never,
    J = never,
    K = never,
    L = never,
    M = never,
    N = never,
    O = never,
    P = never
  >(
    this: A,
    ab: (_: A) => B,
    bc: (_: B) => C,
    cd: (_: C) => D,
    de: (_: D) => E,
    ef: (_: E) => F,
    fg: (_: F) => G,
    gh: (_: G) => H,
    hi: (_: H) => I,
    ij: (_: I) => J,
    jk: (_: J) => K,
    kl: (_: K) => L,
    lm: (_: L) => M,
    mn: (_: M) => N,
    no: (_: N) => O,
    op: (_: O) => P
  ): P
  pipe<
    A,
    B = never,
    C = never,
    D = never,
    E = never,
    F = never,
    G = never,
    H = never,
    I = never,
    J = never,
    K = never,
    L = never,
    M = never,
    N = never,
    O = never,
    P = never,
    Q = never
  >(
    this: A,
    ab: (_: A) => B,
    bc: (_: B) => C,
    cd: (_: C) => D,
    de: (_: D) => E,
    ef: (_: E) => F,
    fg: (_: F) => G,
    gh: (_: G) => H,
    hi: (_: H) => I,
    ij: (_: I) => J,
    jk: (_: J) => K,
    kl: (_: K) => L,
    lm: (_: L) => M,
    mn: (_: M) => N,
    no: (_: N) => O,
    op: (_: O) => P,
    pq: (_: P) => Q
  ): Q
  pipe<
    A,
    B = never,
    C = never,
    D = never,
    E = never,
    F = never,
    G = never,
    H = never,
    I = never,
    J = never,
    K = never,
    L = never,
    M = never,
    N = never,
    O = never,
    P = never,
    Q = never,
    R = never
  >(
    this: A,
    ab: (_: A) => B,
    bc: (_: B) => C,
    cd: (_: C) => D,
    de: (_: D) => E,
    ef: (_: E) => F,
    fg: (_: F) => G,
    gh: (_: G) => H,
    hi: (_: H) => I,
    ij: (_: I) => J,
    jk: (_: J) => K,
    kl: (_: K) => L,
    lm: (_: L) => M,
    mn: (_: M) => N,
    no: (_: N) => O,
    op: (_: O) => P,
    pq: (_: P) => Q,
    qr: (_: Q) => R
  ): R
  pipe<
    A,
    B = never,
    C = never,
    D = never,
    E = never,
    F = never,
    G = never,
    H = never,
    I = never,
    J = never,
    K = never,
    L = never,
    M = never,
    N = never,
    O = never,
    P = never,
    Q = never,
    R = never,
    S = never
  >(
    this: A,
    ab: (_: A) => B,
    bc: (_: B) => C,
    cd: (_: C) => D,
    de: (_: D) => E,
    ef: (_: E) => F,
    fg: (_: F) => G,
    gh: (_: G) => H,
    hi: (_: H) => I,
    ij: (_: I) => J,
    jk: (_: J) => K,
    kl: (_: K) => L,
    lm: (_: L) => M,
    mn: (_: M) => N,
    no: (_: N) => O,
    op: (_: O) => P,
    pq: (_: P) => Q,
    qr: (_: Q) => R,
    rs: (_: R) => S
  ): S
  pipe<
    A,
    B = never,
    C = never,
    D = never,
    E = never,
    F = never,
    G = never,
    H = never,
    I = never,
    J = never,
    K = never,
    L = never,
    M = never,
    N = never,
    O = never,
    P = never,
    Q = never,
    R = never,
    S = never,
    T = never
  >(
    this: A,
    ab: (_: A) => B,
    bc: (_: B) => C,
    cd: (_: C) => D,
    de: (_: D) => E,
    ef: (_: E) => F,
    fg: (_: F) => G,
    gh: (_: G) => H,
    hi: (_: H) => I,
    ij: (_: I) => J,
    jk: (_: J) => K,
    kl: (_: K) => L,
    lm: (_: L) => M,
    mn: (_: M) => N,
    no: (_: N) => O,
    op: (_: O) => P,
    pq: (_: P) => Q,
    qr: (_: Q) => R,
    rs: (_: R) => S,
    st: (_: S) => T
  ): T
  pipe<
    A,
    B = never,
    C = never,
    D = never,
    E = never,
    F = never,
    G = never,
    H = never,
    I = never,
    J = never,
    K = never,
    L = never,
    M = never,
    N = never,
    O = never,
    P = never,
    Q = never,
    R = never,
    S = never,
    T = never,
    U = never
  >(
    this: A,
    ab: (_: A) => B,
    bc: (_: B) => C,
    cd: (_: C) => D,
    de: (_: D) => E,
    ef: (_: E) => F,
    fg: (_: F) => G,
    gh: (_: G) => H,
    hi: (_: H) => I,
    ij: (_: I) => J,
    jk: (_: J) => K,
    kl: (_: K) => L,
    lm: (_: L) => M,
    mn: (_: M) => N,
    no: (_: N) => O,
    op: (_: O) => P,
    pq: (_: P) => Q,
    qr: (_: Q) => R,
    rs: (_: R) => S,
    st: (_: S) => T,
    tu: (_: T) => U
  ): U
  pipe<
    A,
    B = never,
    C = never,
    D = never,
    E = never,
    F = never,
    G = never,
    H = never,
    I = never,
    J = never,
    K = never,
    L = never,
    M = never,
    N = never,
    O = never,
    P = never,
    Q = never,
    R = never,
    S = never,
    T = never,
    U = never
  >(
    this: A,
    ab: (_: A) => B,
    bc: (_: B) => C,
    cd: (_: C) => D,
    de: (_: D) => E,
    ef: (_: E) => F,
    fg: (_: F) => G,
    gh: (_: G) => H,
    hi: (_: H) => I,
    ij: (_: I) => J,
    jk: (_: J) => K,
    kl: (_: K) => L,
    lm: (_: L) => M,
    mn: (_: M) => N,
    no: (_: N) => O,
    op: (_: O) => P,
    pq: (_: P) => Q,
    qr: (_: Q) => R,
    rs: (_: R) => S,
    st: (_: S) => T,
    tu: (_: T) => U
  ): U
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Pipeable.ts#L43)

Since v2.0.0

<!-- README.md is generated from README.Rmd. Please edit that file -->

# Why does preregistration increase the persuasiveness of evidence? A Bayesian rationalization.

Preregistration is becoming increasingly popular in the psychological
sciences. At the same time, many researchers struggle to make precise
predictions and feel overwhelmed by the need to prespecify every detail
of their analysis plan. Should they surrender and discard the idea of
preregistration altogether? Not at all. We argue for the benefits of
preregistration beyond strictly confirmatory studies. Grounded in
Bayesian philosophy of science, we define a formal objective for
preregistration that neither declares changes to a preregistration to be
sinful nor punishes rigor. Our argument rests on the relevance of
“theoretical risk”, a generalization of type-I error rate, for judging
theories. Our proposal is that preregistration should aim to reduce the
uncertainty in judging the theoretical risk instead of limiting the
type-I error rate. We argue that this reformulation extends the utility
of preregistration and is closer aligned with researchers intuition. If
we do not know what a researcher did, we have great uncertainty about
the theoretical risk they took. This uncertainty about the theoretical
risk does us a disservice by decreasing the evidence boost.

A successful prediction should lend more credibility to a theory than a
postdiction, all else being held equal. Much has been theorized on this
important distinction between exploration and confirmation, discovery
and justification, hypothesis generating and hypothesis testing and so
forth (see XXXX). To honor this distinction, many psychological studies
are preregistered to produce results that are considered confirmatory.
This appreciation of confirmatory results falls neatly in line with
Bayesian reasoning (XXX). We leverage this reasoning to outline two
paradigms that rationalize the use of preregistration.

<!-- Caroline does not see the connection to type I error rate/theoretical risk -->

Let us formalize the judgment about a hypothesis (H) given some evidence
(E) as the conditional probability \(p(H|E)\).

Using Bayes’ rule we arrive at:

\[
p(H|E) = \frac{p(H)p(E|H)}{p(H)p(E|H) + p(¬H)p(E|¬H)}
\]

Note the connection to null hypothesis testing. If H represents the
alternative Hypothesis and ¬H represents the Null hypothesis, then
\(p(E|H)\) is the power, while \(p(E|¬H)\) represents the type I/alpha
error. However, generally a theory is richer in content, than equating
it with the alternaive hypothesis in Null hypothesis testing.

<!-- continue to justify the importance of theorethical risk -->

The first paradigm is embraced by the open science community and
conceptualizes preregistration as a tool to reduce the type I error rate
(XXXX). As we will later show, reducing the type I error rate is indeed
a powerful leaver to gather persuasive evidence. In practice, however,
researchers can not reduce the type I error rate at will. They face
three limiting factors. First, psychological theories tend to be vague.
Some decisions are just not derivable from theory, which makes it
extraordinarily difficult to maintain a type I error rate near zero.
Second, researchers are constrained by resource limitations. One way to
counter the first problem is conducting exploratory pilot studies, but
running extensive pilot studies is expensive. Doubling the resources
that go into investigating a research question is often just not tenable
and mostly beyond the individual researcher to decide. Third, by
reducing the type I error rate the researcher directly increases the
likelihood that their study will result in disappointing null results. A
study that fails to deliver results can be crippling to the researchers
career. Depending on individual circumstances, e.g. the theory in
question, resources allocated to a study, the career stage of the
researcher, a researcher may simply feel unable to reduce the type I
error rate to the threshold necessary for a confirmatory study.
Constrained by these factors researchers tasked with writing a
preregistration are incentiviced to either give up or to muddle through
by being intentionally vague. The latter practice leads to
preregistrations stating unspecific assumptions such as “we expect some
of the Xs to correlate with some of the Ys”.

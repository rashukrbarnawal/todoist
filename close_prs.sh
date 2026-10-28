#!/bin/bash

# Script to close PRs that add README/docs files
# Keep only CI/CD-related PRs

set -e

echo "Closing README/Docs PRs and keeping CI/CD PRs..."
echo ""

# todoist repository
echo "=== todoist Repository ==="
echo "Closing PR #4: add rewq.md file (README)"
echo "Closing PR #2: add OWNER_AND_MAINTAINER.md file (Documentation)"
echo ""
echo "These would be closed by:"
echo "  gh pr close rashukrbarnawal/todoist/4"
echo "  gh pr close rashukrbarnawal/todoist/2"
echo ""
echo "Keeping PR #1: CI failure test"
echo ""

# Angular_Tutorial repository
echo "=== Angular_Tutorial Repository ==="
echo "Closing README/Docs PRs:"
echo "  gh pr close rashukrbarnawal/Angular_Tutorial/1   # docs: add day3.md"
echo "  gh pr close rashukrbarnawal/Angular_Tutorial/2   # styles.json documentation"
echo "  gh pr close rashukrbarnawal/Angular_Tutorial/11  # README/learning materials"
echo "  gh pr close rashukrbarnawal/Angular_Tutorial/12  # README/learning materials"
echo "  gh pr close rashukrbarnawal/Angular_Tutorial/13  # README/learning materials"
echo "  gh pr close rashukrbarnawal/Angular_Tutorial/14  # README/learning materials"
echo "  gh pr close rashukrbarnawal/Angular_Tutorial/15  # README/learning materials"
echo "  gh pr close rashukrbarnawal/Angular_Tutorial/16  # README/learning materials"
echo "  gh pr close rashukrbarnawal/Angular_Tutorial/17  # README/learning materials"
echo ""
echo "Keeping CI/CD PRs (test case PRs):"
echo "  PR #3: YAML workflow fails on PR (CI/CD)"
echo "  PR #5: broken JavaScript file for CI failure (CI/CD)"
echo "  PR #6: intentional CSS syntax errors for CI testing (CI/CD)"
echo "  PR #7: intentional syntax errors for CI/CD validation (CI/CD)"
echo "  PR #8: JavaScript syntax errors to fail CI (CI/CD)"
echo "  PR #9: syntax error to check ci fail (CI/CD)"
echo "  PR #10: CI/CD related (CI/CD)"
echo ""

echo "Summary:"
echo "  Total PRs to close: 11 (todoist: 2, Angular_Tutorial: 9)"
echo "  Total PRs to keep: 8  (todoist: 1, Angular_Tutorial: 7)"
